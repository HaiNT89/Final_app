Nội dung đã hoàn thành:
<ul>
<li>Giao diện trang Signup và kiểm tra hợp lệ</li>
<li>Giao diện trang Login và kiểm tra hợp lệ</li>
<li>Add file rails app</li>
<li>Add file Migrate and model</li>
<li>Tạo db và validate cho db</li>
<li>Tạo "accepted formats are jpeq, png and gif" cho album và photo</li>
<li>Tạo "accepted formats are jpeq, png" cho avatar</li>
</ul>

Chưa hoàn thành
<ul>
<li>Chưa tạo được validate "Maximum size for each image is 5Mb" cho photo và album và "Maximum size for each image is 2Mb" cho avatar </li>

</ul>

Mô tả database
<ul>
<li>Có 4 model: Account, Album, Photo, Reaction, Follow</li>
<li>Account sẽ quan hệ 1-n vơi Album (1 Account có thể tạo được 1 hoặc nhiều Album, và 1 Album sẽ được tạo bởi 1 Account)</li>
<li>Account sẽ quan hệ 1-n vơi Photo (1 Account có thể tạo được 1 hoặc nhiều Photo, và 1 Photo sẽ được tạo bởi 1 Account)</li>
<li>Album sẽ quan hệ 1-n vơi Photo (1 Album có thể có 1 hoặc nhiều Photo, và 1 Photo có thể thuộc Album hoặc không thuộc Alum nào, tức là Photo đó có thể được tạo riêng lẽ bởi người dùng hoặc khi tạo Album và tải hình lên thì Photo đó có album_id là khóa ngoại, khi xóa album thì Photo nào có khóa ngoại Album đó sẽ bị xóa theo)</li>
<li>Reaction là lưu thông tin tương tác với Photo hoặc Album, Reaction sẽ tương tác với 2 model Photo và Album thông qua polymorphic association, khi tương tác vào photo thì sẽ lưu type là Photo ngược lại thì lưu Album</li>
<li>Account có thể "follow" nhiều account khác through Follow model, đồng th, account có thể “followed” bởi nhiều account through Follow model</li>
</ul>
