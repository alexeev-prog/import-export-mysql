from pathlib import Path
import re


def load_text_from_file(filename: str) -> str:
	file = Path(filename)

	if not file.exists():
		raise FileNotFoundError(f'File "{filename}" not found')

	with open(file, 'r') as file:
		return file.read()


def replace_dash_to_long(text: str):
	return text.replace(' - ', ' — ')


def replace_quotes_herringbone(text: str):
	return re.sub(r'"(.+?)"', r'«\1»', text)


text = load_text_from_file("tutorial/ru.md")

result = replace_dash_to_long(text)
result = replace_quotes_herringbone(result)

with open('out.md', 'w') as file:
	file.write(result)
