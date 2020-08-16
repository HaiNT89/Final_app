1. Bootstrap ở đâu mà có mà ở trong `rails_app/app/assets/stylesheets/application.css` lại import ngon lành vậy? Start app vào browser console thì sẽ thấy báo lỗi not found nè. Khi code cần để ý lỗi ở browser báo nữa chứ.

2. Những file nào mà ko cần, ko code gì thì đừng push lên. Ví dụ:

    - rails_app/app/assets/stylesheets/accounts.scss

    - rails_app/app/assets/stylesheets/newest.scss

    - etc.

3. Chú ý coding style

    - Break line cho có quy tắc, hiện đang thấy thích thì break line ko theo 1 quy tắc nào cả. Ví dụ:

        - rails_app/app/controllers/albums_controller.rb

    - Alignment ko tốt, `head` và `body` là con thẻ `document` nhưng align cùng cấp

        - rails_app/app/views/albums/edit.html.erb

        - rails_app/app/views/accounts/new.html.erb

        - etc.

    - Alignment quá kinh!

        - rails_app/app/views/albums/show.html.erb

4. Đặt tên biến ngắn gọn nhưng cũng cần có thể mô tả được biến đó chứa gì, ko đặt những cái tên vô nghĩa. Code viết ra ko chỉ để chạy, viết sao để nó dễ bảo trì nữa.

    - rails_app/app/controllers/albums_controller.rb#show

      + `@a`, `@b` là những cái tên biến rất vô nghĩa

      + Những biến dùng để chưa collection thì cần ở số nhiều. Ví dụ: `@photo = Photo.where(album_id: @albums)` => `@photos`

5. Code viết ko thể hiểu được!

    - rails_app/app/controllers/newest_controller.rb#index

    ```
    b = a.account_id
    @account = Account.where(id: b)
    ```

      + Tại sao ko tạo association giữa album (`b`) và account để lấy ra `@account` thay vì phải đi viết câu truy vấn?

      + `@account = Account.where(id: b)` => 1 `account_id` chắc chắn chỉ tương ứng với 1 account thôi tại sao lại đi dùng method `where` trong khi method này sẽ trả về 1 collection?

      + `@account` dc gán giá trị trong 1 loop thì cuối cùng giá trị nó sẽ bị ghi đè liên tục, vậy ngoại trừ làn lặp cuối cùng thì những lần lăp trc việc gán biến có ý nghĩa gì đâu!

    - JS có folder riêng để chưa, sao lại đặt trong view? `rails_app/app/views/albums/_validate.js`?

6. Ko dc hard code path, phải dùng path helper

    - rails_app/app/controllers/albums_controller.rb:23

7. Các template (view) khi render đều dc render với layout (application.html.erb) , trng layout đã có phần `html`, `head`, `body`, trong mấy cái template ko (được) viết thêm, viết lại những thẻ này.

8. Làm tới đâu thì cho xong tới đó, copy code từ phần làm frontend thì copy tới đâu sửa cho nó chạy tới đó, copy hết vào mà thấy chưa sửa gì, nhiều cái nhìn vào là thấy ko chạy được thì thà khoan copy.

9. Code hiển thị flash (`<% flash.each do |name, msg| -%>...`) lặp lại nhiều nơi thì viết 1 partial để reuse lại. Và partial này nên để render ngoài layout thay vì trong từng template vì flash message nên hiển thị đồng bộ cùng 1 vị trí xuyên suốt các page.

10. Tính năng còn thiếu quá nhiều!!! Tuy chưa đến deadline nhưng những gì hiện làm dc là ít.



