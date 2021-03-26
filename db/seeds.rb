users = [
    {username: 'mjackson09', password_digest: '$kittles1', email: 'mjackson@gmail.com'},
    {username: 'timmy92', password_digest: 'bigballer9', email: 'timmy92@yahoo.com'},
    {username: 'samantha1', password_digest: 'cuddles89', email: 'samantha@flatiron.com'},
    {username: 'tommyjohn90', password_digest: 'curveball123', email: 'tommyjohn@gmail.com'},
    {username: 'devildog31', password_digest: 'machinegun31', email: 'devildog@yahoo.com'},
]

users.each do |user|
    User.create(user)
end

videos = [
    {name: 'moondance', category: 'dance', user_id: '2'},
    {name: 'mens league game', category: 'highlight', user_id: '3'},
    {name: 'learning to sit', category: 'training', user_id: '4'},
    {name: 'electric slide', category: 'dance', user_id: '2'},
    {name: 'throwing a curveball', category: 'instructional', user_id: '5'},
    {name: 'ffar gameplay', category: 'montage', user_id: '6'},
    {name: 'learning to fetch', category: 'training', user_id: '4'},
    {name: 'buzzer beaters', category: 'montage', user_id: '3'},
    {name: 'kar98 gameplay', category: 'montage', user_id: '6'},
    {name: 'picking off baserunners', category: 'instructional', user_id: '5'},
    {name: 'tiktok dances to learn at home', category: 'dance', user_id: '2'},
    {name: 'search and destroy clutch', category: 'gameplay', user_id: '6'},
]

videos.each do |video|
    Video.create(video)
end