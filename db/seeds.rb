User.create(
    name: 'root',
    email: 'root',
    admin: true,
    password_digest: BCrypt::Password.create("root")
    )
    
Cinema.create(
    [
        {
            name: 'グリーンブック',
            image: 'https://images-na.ssl-images-amazon.com/images/I/51tdBs32wuL._SY445_.jpg'
        },
        {
            name: 'マイ・インターン',
            image: 'https://images-na.ssl-images-amazon.com/images/I/91duwMz5bPL._SY445_.jpg'
        },
        {
            name: 'グレイテスト・ショーマン',
            image: 'https://images-na.ssl-images-amazon.com/images/I/51ZZC7QS-EL.jpg'
        }
    ]    
)

Post.create(
    [
        {
            content: '面白い！',
            user_id: 1,
            cinema_id: 1
        }    
    ]
)