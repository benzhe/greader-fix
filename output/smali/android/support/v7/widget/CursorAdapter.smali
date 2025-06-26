.class public abstract Landroid/support/v7/widget/CursorAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$e;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroid/support/v7/widget/CursorFilter$CursorFilterClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/CursorAdapter$MyDataSetObserver;,
        Landroid/support/v7/widget/CursorAdapter$ChangeObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroidx/recyclerview/widget/RecyclerView$a0;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$e<",
        "TVH;>;",
        "Landroid/widget/Filterable;",
        "Landroid/support/v7/widget/CursorFilter$CursorFilterClient;"
    }
.end annotation


# static fields
.field public static final FLAG_REGISTER_CONTENT_OBSERVER:I = 0x2


# instance fields
.field public mChangeObserver:Landroid/support/v7/widget/CursorAdapter$ChangeObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/widget/CursorAdapter<",
            "TVH;>.ChangeObserver;"
        }
    .end annotation
.end field

.field public mContext:Landroid/content/Context;

.field public mCursor:Landroid/database/Cursor;

.field public mCursorFilter:Landroid/support/v7/widget/CursorFilter;

.field public mDataSetObserver:Landroid/database/DataSetObserver;

.field public mDataValid:Z

.field public mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

.field public mRowIDColumn:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$e;-><init>()V

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/CursorAdapter;->init(Landroid/content/Context;Landroid/database/Cursor;I)V

    return-void
.end method


# virtual methods
.method public changeCursor(Landroid/database/Cursor;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/CursorAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/CursorAdapter;->mCursorFilter:Landroid/support/v7/widget/CursorFilter;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/support/v7/widget/CursorFilter;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/CursorFilter;-><init>(Landroid/support/v7/widget/CursorFilter$CursorFilterClient;)V

    iput-object v0, p0, Landroid/support/v7/widget/CursorAdapter;->mCursorFilter:Landroid/support/v7/widget/CursorFilter;

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/CursorAdapter;->mCursorFilter:Landroid/support/v7/widget/CursorFilter;

    return-object v0
.end method

.method public getFilterQueryProvider()Landroid/widget/FilterQueryProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/CursorAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    return-object v0
.end method

.method public getItem(I)Landroid/database/Cursor;
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/CursorAdapter;->mDataValid:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Landroid/support/v7/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    return-object p1

    :cond_0
    return-object v1
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/CursorAdapter;->mDataValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItemId(I)J
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/CursorAdapter;->mDataValid:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Landroid/support/v7/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    iget v0, p0, Landroid/support/v7/widget/CursorAdapter;->mRowIDColumn:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0

    :cond_0
    return-wide v1
.end method

.method public init(Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1
    :goto_0
    iput-object p2, p0, Landroid/support/v7/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 2
    iput-boolean v1, p0, Landroid/support/v7/widget/CursorAdapter;->mDataValid:Z

    .line 3
    iput-object p1, p0, Landroid/support/v7/widget/CursorAdapter;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    const-string p1, "_id"

    .line 4
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, -0x1

    :goto_1
    iput p1, p0, Landroid/support/v7/widget/CursorAdapter;->mRowIDColumn:I

    const/4 p1, 0x2

    and-int/2addr p3, p1

    const/4 v2, 0x0

    if-ne p3, p1, :cond_2

    .line 5
    new-instance p1, Landroid/support/v7/widget/CursorAdapter$ChangeObserver;

    invoke-direct {p1, p0}, Landroid/support/v7/widget/CursorAdapter$ChangeObserver;-><init>(Landroid/support/v7/widget/CursorAdapter;)V

    iput-object p1, p0, Landroid/support/v7/widget/CursorAdapter;->mChangeObserver:Landroid/support/v7/widget/CursorAdapter$ChangeObserver;

    .line 6
    new-instance p1, Landroid/support/v7/widget/CursorAdapter$MyDataSetObserver;

    invoke-direct {p1, p0, v2}, Landroid/support/v7/widget/CursorAdapter$MyDataSetObserver;-><init>(Landroid/support/v7/widget/CursorAdapter;Landroid/support/v7/widget/CursorAdapter$1;)V

    iput-object p1, p0, Landroid/support/v7/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    goto :goto_2

    .line 7
    :cond_2
    iput-object v2, p0, Landroid/support/v7/widget/CursorAdapter;->mChangeObserver:Landroid/support/v7/widget/CursorAdapter$ChangeObserver;

    .line 8
    iput-object v2, p0, Landroid/support/v7/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    :goto_2
    if-eqz v1, :cond_4

    .line 9
    iget-object p1, p0, Landroid/support/v7/widget/CursorAdapter;->mChangeObserver:Landroid/support/v7/widget/CursorAdapter$ChangeObserver;

    if-eqz p1, :cond_3

    invoke-interface {p2, p1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 10
    :cond_3
    iget-object p1, p0, Landroid/support/v7/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz p1, :cond_4

    invoke-interface {p2, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 11
    :cond_4
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$e;->setHasStableIds(Z)V

    return-void
.end method

.method public abstract onBindViewHolder(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView$a0;Landroid/database/Cursor;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TVH;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$a0;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/CursorAdapter;->mDataValid:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p2, p0, Landroid/support/v7/widget/CursorAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Landroid/support/v7/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, p2, p1, v0}, Landroid/support/v7/widget/CursorAdapter;->onBindViewHolder(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView$a0;Landroid/database/Cursor;)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "couldn\'t move cursor to position "

    invoke-static {v0, p2}, Ljo;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "this should only be called when the cursor is valid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract onContentChanged()V
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/CursorAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Landroid/widget/FilterQueryProvider;->runQuery(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method public setFilterQueryProvider(Landroid/widget/FilterQueryProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v7/widget/CursorAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-eqz v0, :cond_2

    .line 2
    iget-object v1, p0, Landroid/support/v7/widget/CursorAdapter;->mChangeObserver:Landroid/support/v7/widget/CursorAdapter$ChangeObserver;

    if-eqz v1, :cond_1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 4
    :cond_2
    iput-object p1, p0, Landroid/support/v7/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz p1, :cond_5

    .line 5
    iget-object v1, p0, Landroid/support/v7/widget/CursorAdapter;->mChangeObserver:Landroid/support/v7/widget/CursorAdapter$ChangeObserver;

    if-eqz v1, :cond_3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 6
    :cond_3
    iget-object v1, p0, Landroid/support/v7/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_4
    const-string v1, "_id"

    .line 7
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/CursorAdapter;->mRowIDColumn:I

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Landroid/support/v7/widget/CursorAdapter;->mDataValid:Z

    .line 9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    goto :goto_0

    :cond_5
    const/4 p1, -0x1

    .line 10
    iput p1, p0, Landroid/support/v7/widget/CursorAdapter;->mRowIDColumn:I

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Landroid/support/v7/widget/CursorAdapter;->mDataValid:Z

    .line 12
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    :goto_0
    return-object v0
.end method
