from tkinter import *
import random

# 과제 3
# 점수를 화면에 표시(맞힌 블록의 갯수)
# 공이 패들에 반사될 때 난수를 추가하여 난반사
# 공의 갯수 3개

class Sprite():
    def __init__(self, canvas, item):
        self.canvas = canvas	# 캔버스 객체
        self.item = item		# 캔버스 안에 있는 도형의 식별 번호
        self.speedx = 3			# x 방향 속도
        self.speedy = 3			# y 방향 속도
        self.x = 0				# 현재 x좌표  
        self.y = 0				# 현재 x좌표 

	  # 도형의 위치와 크기를 반환한다. 
    def get_coords(self):
        return self.canvas.coords(self.item)

	  # 도형의 위치를 반환한다. 
    def get_position(self):
        pos = self.canvas.coords(self.item)
        x = pos[0]
        y = pos[1]
        return x, y

	  # 객체의 상태를 변경한다. 
    def update(self):
        self.x = self.x + self.speedx
        self.y = self.y + self.speedy

	  # 객체를 움직인다. 
    def move(self):
        self.canvas.move(self.item, self.speedx, self.speedy)

	  # 객체를 캔버스에서 삭제한다. 
    def delete(self):
        self.canvas.delete(self.item)
        
        
class Ball(Sprite):
    def __init__(self, canvas, x, y, radius):
        self.radius = radius
        item = canvas.create_oval(x-self.radius, y-self.radius,
                                  x+self.radius, y+self.radius,
                                  fill='red')
        self.x = x
        self.y = y
        super().__init__(canvas, item)		# 부모 클래스(SPrite) 생성자 호출

    def update(self):
        x, y = self.get_position()
        width = self.canvas.winfo_width()
 		 
        # 벽에 부딪히면 방향을 변경한다. 
        if x <= 0 or x >= width:
            self.speedx *= -1		# x 방향 변경
        if y <= 0:
            self.speedy *= -1		# y 방향 변경
            
        obj_list = self.canvas.find_overlapping(x, y, x, y)
        if len(obj_list) and self.canvas.type(obj_list[0]) == 'rectangle':
            self.speedy *= -1
            self.speedx += random.uniform(-2, 2)
            self.speedy += random.uniform(-2, 2)

        self.x = self.x + self.speedx
        self.y = self.y + self.speedy

    def collide(self, obj_list):
        x, y = self.get_position()
        
        # 공이 패들이나 벽돌에 맞으면 y방향을 반대로 한다. 
        if len(obj_list):
            if any(isinstance(obj, Paddle) for obj in obj_list):
                self.speedx += random.randint(-5, 5)  # x 방향 속도에 난수 추가
            self.speedy *= -1

        for obj in obj_list:
            if isinstance(obj, Brick):
                obj.handle_collision()
                
class Paddle(Sprite):
    def __init__(self, canvas, x, y):
        self.width = 100 
        self.height = 20
        item = canvas.create_rectangle(x - self.width / 2, y - self.height / 2,
                                       x + self.width / 2, y + self.height / 2,
                                       fill='white')
        super().__init__(canvas, item)  # 부모 클래스 생성자 호출
        self.x = x                      # 현재 위치 저장
        self.y = y

    # 패들을 dx, dy만큼 이동한다. 키보드 이벤트에서 호출된다. 
    def move(self, dx, dy):
        self.x = self.x + dx
        self.y = self.y + dy
        self.canvas.move(self.item, dx, dy)

class Brick(Sprite):
    def __init__(self, canvas, x, y, game):
        self.width = 52
        self.height = 25
        self.game = game
        item = canvas.create_rectangle(x - self.width / 2, y - self.height / 2,
                                       x + self.width / 2, y + self.height / 2,
                                       fill='yellow', tags='brick')
        super().__init__(canvas, item)

    # 벽돌과 공이 충돌하면 벽돌을 삭제한다. 
    def handle_collision(self):
        self.game.update_score(1)
        self.delete()

            
            
class BrickBreaker(Frame):
    def __init__(self, root):
        # 벽돌깨기 frame 안의 cavas 정의
        super().__init__(root)
        self.width = 640
        self.height = 480
        self.canvas = Canvas(self, bg='blue',
                                width=self.width,
                                height=self.height,)
        
        self.score = 0
        self.score_text = self.canvas.create_text(100, 420, text="Score = {}".format(self.score), font=("Helvetica", 20))
        
        self.canvas.pack()
        self.pack()
        
        # shapes에는 화면에 있는 모든 객체가 저장된다. 
        # 키는 도형 식별 번호이고 값은 객체이다. 
        self.shapes = {}

        # 패들 객체를 생성하고 shapes에 저장한다. 
        self.paddle = Paddle(self.canvas, self.width/2, 450)
        self.shapes[self.paddle.item] = self.paddle

        # Ball 객체를 생성한다. 
        self.ball1 = Ball(self.canvas, 310, 200, 10)
        self.ball2 = Ball(self.canvas, 350, 200, 10)
        self.ball3 = Ball(self.canvas, 270, 200, 10)

        # Brick 객체를 2차원 모양으로 생성한다. 
        for r in range(1, 4):
            for c in range(1, 10):
                brick = Brick(self.canvas, c*60, r*30, self)
                # Brick 객체를 shapes에 저장한다. 
                self.shapes[brick.item] = brick

        # 캔버스가 키보드 이벤트를 받을 수 있도록 설정한다. 
        self.canvas.focus_set()
        # 화살표키와 스페이스키에 이벤트를 붙인다.
        self.canvas.bind('<Left>',
                         lambda _: self.paddle.move(-10, 0))
        self.canvas.bind('<Right>',
                         lambda _: self.paddle.move(10, 0))
        self.canvas.bind('<space>', lambda _: self.start())
        
    def update_score(self, points):
        self.score += points
        self.canvas.itemconfig(self.score_text, text="Score = {}".format(self.score))

    def start(self):
        self.game_loop()

    # 게임 루프를 작성한다. 
    def game_loop(self):
        coords1 = self.ball1.get_coords() # Ball 객체의 위치를 구한다.
        coords2 = self.ball2.get_coords()
        coords3 = self.ball3.get_coords()
        
        # 겹치는 모든 도형을 찾는다. 식별 번호가 저장된다. 
        items1 = self.canvas.find_overlapping(*coords1)
        items2 = self.canvas.find_overlapping(*coords2)
        items3 = self.canvas.find_overlapping(*coords3)
        
        # 겹치는 도형의 식별 번호로 객체를 찾아서 리스트에 저장한다. 
        objects1 = [self.shapes[x] for x in items1 if x in self.shapes]
        objects2 = [self.shapes[x] for x in items2 if x in self.shapes]
        objects3 = [self.shapes[x] for x in items3 if x in self.shapes]
        
        # 충돌 처리 메소드를 호출한다. 
        self.ball1.collide(objects1)
        self.ball1.update()
        self.ball1.move()
         
        self.ball2.collide(objects2)
        self.ball2.update()
        self.ball2.move()
        
        self.ball3.collide(objects3)
        self.ball3.update()
        self.ball3.move()
        
        # game_loop()를 50밀리초 후에 호출한다. 
        self.after(50, self.game_loop)
        
        
window = Tk()
window.resizable(False, False)
game = BrickBreaker(window)
window.mainloop()