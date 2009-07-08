class NotesController < ApplicationController
  # GET /notes
  # GET /notes.xml
  # GET /notes.fxml
  def index
    @notes = Note.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @notes }
      format.fxml  { render :fxml => @notes }
    end
  end

  # GET /notes/1
  # GET /notes/1.xml
  # GET /notes/1.fxml
  def show
    @note = Note.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @note }
      format.fxml  { render :fxml => @note }
    end
  end

  # GET /notes/new
  # GET /notes/new.xml
  def new
    @note = Note.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @note }
    end
  end

  # GET /notes/1/edit
  def edit
    @note = Note.find(params[:id])
  end

  # POST /notes
  # POST /notes.xml
  # POST /notes.fxml
  def create
    @note = Note.new(params[:note])

    respond_to do |format|
      if @note.save
        flash[:notice] = 'Note was successfully created.'
        format.html { redirect_to(@note) }
        format.xml  { render :xml => @note, :status => :created, :location => @note }
        format.fxml  { render :fxml => @note }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @note.errors, :status => :unprocessable_entity }
        format.fxml  { render :fxml => @note.errors }
      end
    end
  end

  # PUT /notes/1
  # PUT /notes/1.xml
  # PUT /notes/1.fxml
  def update
    @note = Note.find(params[:id])
    @saved = @note.update_attributes(params[:note])

    respond_to do |format|
      if @saved
        flash[:notice] = 'Note was successfully updated.'
        format.html { redirect_to(@note) }
        format.xml  { head :ok }
        format.fxml  { render :fxml => @note }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @note.errors, :status => :unprocessable_entity }
        format.fxml  { render :fxml => @note.errors }
      end
    end
  end

  # DELETE /notes/1
  # DELETE /notes/1.xml
  # DELETE /notes/1.fxml
  def destroy
    @note = Note.find(params[:id])
    @note.destroy

    respond_to do |format|
      format.html { redirect_to(notes_url) }
      format.xml  { head :ok }
      format.fxml  { render :fxml => @note }
    end
  end
end