build:
	docker build -t ruby .

run:
	docker run -it --rm -v $(PWD):/app ruby ruby /app/game_of_life.rb

bash:
	docker run -it --rm -v $(PWD):/app ruby bash