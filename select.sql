select * from db.category;

select * from db.comment;

select * from db.medal;

select * from db.post;

select * from db.reward;

select * from db.role;

select * from db.tag;

select * from db.taggedPost;

select * from db.user;

select * from db.vote;

/* user */
call db.getAllUsersByRole('USER');

call db.createUser('rafal', 'magrys', 'raaff@raf.com', 'haslo', 'ADMIN');

select * from db.user where user.email = 'raaff@raf.com';

call db.updateUsersPassword('raaff@raf.com','haslo4');

call db.changeUserState(15,1);

call db.getUserById(15);

/* category */

call db.createCategory('test1','testtesttesttesttesttesttesttest');

call db.updateCategory(6,'test2','');

call db.changeCategoryState(6,1);

call db.getCategoryById(2);

call db.getAllCategories();

/* post */

call db.createPost('test','testtesttesttesttesttesttesttest', 'Sprawozdania','af@af.com');

call db.getAllPostsByCategoryId(3);

call db.getPostById(3);

call db.updatePost(1,'test4','testtesttesttest',1 );

select * from db.post where post.idPost = 1;

select * from db.post;

/*  comment  */

select * from db.category where category.name = "test2";

call db.getAllCommentsByPostId(5);

call db.createComment('testtesttest',2,2,1023);

call db.updateComment(2004,'testtestteasdasdsadst');

select * from db.comment where comment.content = 'testtestteasdasdsadst';

/* tag */

call db.getAllTagsByPostId(2);

call db.addTagToPost('test', 2);

select * from taggedPost;

select * from tag;

call db.changeTagStateByPostId(2,12,0);

select * from db.taggedPost;

/* medal */

call db.addNewMedal("forumowicz");

select * from medal;

call  db.getAllUserMedalsByUserId(45);

select * from db.reward;

call db.rewardUser(2,2,'test',45);

/* vote */

call db.addVoteToComment( 1203,23,0 );

call db.countVotesByCommentId(1203);

call db.countVotesByCommentId_v2(1203);
