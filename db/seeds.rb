users = [
    {email: 'mjackson@gmail.com', username: 'mjackson', password: 'skittles1'},
    {email: 'timmy92@yahoo.com', username: 'timmy', password: 'bigballer9'},
    {email: 'samantha@flatiron.com', username: 'samantha', password: 'cuddles89'},
    {email: 'tommyjohn@gmail.com', username: 'tommyjohn', password: 'curveball123'},
    {email: 'devildog@yahoo.com', username: 'devildog', password: 'machinegun31'}
]

users.each do |user|
    User.create(user)
end

videos = [
    {name: 'moondance', category: 'dance', user_id: '1'},
    {name: 'mens league game', category: 'highlight', user_id: '2'},
    {name: 'learning to sit', category: 'training', user_id: '3'},
    {name: 'electric slide', category: 'dance', user_id: '1'},
    {name: 'throwing a curveball', category: 'instructional', user_id: '4'},
    {name: 'ffar gameplay', category: 'montage', user_id: '5'},
    {name: 'learning to fetch', category: 'training', user_id: '3'},
    {name: 'buzzer beaters', category: 'montage', user_id: '2'},
    {name: 'kar98 gameplay', category: 'montage', user_id: '5'},
    {name: 'picking off baserunners', category: 'instructional', user_id: '4'},
    {name: 'tiktok dances to learn at home', category: 'dance', user_id: '1'},
    {name: 'search and destroy clutch', category: 'gameplay', user_id: '5'}
]

videos.each do |video|
    Video.create(video)
end