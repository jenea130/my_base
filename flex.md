# Ларичев, flex box
.container {
    display: flex;
    flex-wrap: wrap;
    gap: 20px;
}
.item {
    flex: 0 1 calc(100% / 3 - 20px * 2 / 3)
}

---------------------------------------------

# Sergei, html-createx: agency
.agency__items {
    display: flex;
    flex-wrap: wrap;
    margin: 0 -20px;
    width: 49%;
}

.agency__item {
    display: flex;
    align-items: center;
    margin: 0 20px 30px;
    flex: 0 0 calc(50% - 40px);
}
