<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" type="image/x-icon" href="../images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>2022. 6. 27. - 오전 9:06:35</title>
</head>
<body>

<div class="wrapper">
        <form id="todo-form" class="form">
            <input required maxlength="10" type="text" placeholder="SEARCH">
        </form>
        <button type="submit" form="todo-form">제출하기</button>
        <div class="todo-inner"><!-- 1434 <div class="search_layer todo-inner"> -->
            <div class="allDelete off"><!-- 1436 <div class="layer_inner allDelete off"> -->
                <h2 class="tit">최근 검색어</h2>
                <span class="btn">모두 지우기 ❌</span><!-- sch_all_del  -->
            </div>
            <p class="ptxt"></p>
            <ul id="todo-list"></ul>
        </div>
</div>

<script>
const toDoForm = document.querySelector('#todo-form');
const toDoInput = toDoForm.querySelector('input');
const toDoList = document.querySelector('#todo-list');
const allDelete = document.querySelector('.allDelete');
const txt = document.querySelector('.ptxt');
const TODOS_KEY = "todos";

let toDos = new Array();

function saveToDos() { //item을 localStorage에 저장합니다.
    typeof(Storage) !== 'undefined' && localStorage.setItem(TODOS_KEY, JSON.stringify(toDos));
};

function allDeleteToDo() { // 전체 item을 삭제
    localStorage.clear(toDos);
    toDoList.innerText = '최근검색어 내역이 없습니다.';
};

function deleteToDo(e) { //각각의 item을 삭제
    const li = e.target.parentElement;
    li.remove();
    toDos = toDos.filter((toDo) => toDo.id !== parseInt(li.id));
    toDos.length === 0 && (txt.innerText = '최근검색어 내역이 없습니다.')
    saveToDos();
};

function paintToDo(newTodo) { //화면에 뿌림
    const {id, text} = newTodo;
    const item = document.createElement("li");
    const span = document.createElement("span");
    const button = document.createElement("button");
    item.id = id;
    span.innerText = text;
    button.innerText = 'x';
    button.addEventListener("click", deleteToDo);
    allDelete.addEventListener("click", allDeleteToDo);
    item.appendChild(span);
    item.appendChild(button);
    toDoList.appendChild(item);
    newTodo !== null && allDelete.classList.remove('off');
};

function handleToDoSubmit(event) { //form 전송
    event.preventDefault();
    const newTodoItem = toDoInput.value;
    toDoInput.value = '';
    const newTodoObj = {
        id: Date.now(),
        text: newTodoItem
    };
    toDos.push(newTodoObj);
    paintToDo(newTodoObj);
    saveToDos();
};

toDoForm.addEventListener('submit', handleToDoSubmit);

const savedToDos = JSON.parse(localStorage.getItem(TODOS_KEY));
if(savedToDos !== null) {
    toDos = savedToDos //전에 있던 items들을 계속 가지고 있도록 함 
    savedToDos.forEach(paintToDo);
}
</script>


<script>
const toDoForm = document.querySelector('#todo-form');
const toDoInput = toDoForm.querySelector('input');
const toDoList = document.querySelector('#todo-list');
const allDelete = document.querySelector('.allDelete');
const txt = document.querySelector('.txt');
const TODOS_KEY = "todos";

let toDos = new Array();

function saveToDos() { //item을 localStorage에 저장합니다.
    typeof(Storage) !== 'undefined' && localStorage.setItem(TODOS_KEY, JSON.stringify(toDos));
};

function allDeleteToDo() { //전체 item을 삭제
    localStorage.clear(toDos);
    toDoList.innerText = '최근검색어 내역이 없습니다.';
};

function deleteToDo(e) { //각각의 item을 삭제
    const li = e.target.parentElement;
    li.remove();
    toDos = toDos.filter((toDo) => toDo.id !== parseInt(li.id));
    toDos.length === 0 && (txt.innerText = '최근검색어 내역이 없습니다.')
    saveToDos();
};

function paintToDo(newTodo) { //화면에 뿌림
    const {id, text} = newTodo;
    const item = document.createElement("li");
    const span = document.createElement("span");
    const button = document.createElement("button");
    item.id = id;
    span.innerText = text;
    button.innerText = '❌';
    button.addEventListener("click", deleteToDo);
    allDelete.addEventListener("click", allDeleteToDo);
    item.appendChild(span);
    item.appendChild(button);
    toDoList.appendChild(item);
    newTodo !== null && allDelete.classList.remove('off');
};

function handleToDoSubmit(event) { //form 전송
    event.preventDefault();
    const newTodoItem = toDoInput.value;
    toDoInput.value = '';
    const newTodoObj = {
        id: Date.now(),
        text: newTodoItem
    };
    toDos.push(newTodoObj);
    paintToDo(newTodoObj);
    saveToDos();
};

toDoForm.addEventListener('submit', handleToDoSubmit);

const savedToDos = JSON.parse(localStorage.getItem(TODOS_KEY));
if(savedToDos !== null) {
    toDos = savedToDos //전에 있던 items들을 계속 가지고 있도록 함 
    savedToDos.forEach(paintToDo);
}
</script>
</body>
</html>