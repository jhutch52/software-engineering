class FriendshipsController < ApplicationController
    
  def new
    @friendship = Friendship.new
  end
    
    def create
        @friendship = current_user.friendships.build(:friend_id => params[:friend_id])
    
        respond_to do |format|
          if @friendship.save
            format.html { redirect_to friendships_url, notice: 'Friend was successfully added.' }
            format.json { render :show, status: :created, location: friendships_url }
          else
            format.html { render :new }
            format.json { render json: friendships_url, status: :unprocessable_entity }
          end
        end
    end
    
    # DELETE /friends/1
    # DELETE /friends/1.json
    def destroy
      @friendship = current_user.friendships.find(params[:id])
      @friendship.destroy
      respond_to do |format|
        format.html { redirect_to friendships_url, notice: 'Friend was successfully removed.' }
        format.json { head :no_content }
      end
    end
  
end
