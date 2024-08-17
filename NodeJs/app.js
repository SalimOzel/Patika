const posts = [
    { id: "1", text: "Text 1", from: "Qwe" },
    { id: "2", text: "Text 2", from: "Asd" },
    { id: "3", text: "Text 3", from: "Zxc" },
]

const listPosts = () => {
    posts.map(post => console.log(post))
}

const addPost = () => {
    return promisePost = new Promise((resolve, reject) => {
        posts.push({ id: "4", text: "Text 4", from: "babbaaaa" })
        resolve("Eklendi")
        reject("Eklenemedi")
    })
}

async function showPost() {
    try {
        const res = await addPost()
        console.log(`Yeni Post ${res}`)
        listPosts()
    } catch (error) {
        console.log(error)
    }
}

showPost()