.class public Landroid/support/v7/widget/CursorAdapter$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/CursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/support/v7/widget/CursorAdapter;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/CursorAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v7/widget/CursorAdapter$MyDataSetObserver;->this$0:Landroid/support/v7/widget/CursorAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/support/v7/widget/CursorAdapter;Landroid/support/v7/widget/CursorAdapter$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/support/v7/widget/CursorAdapter$MyDataSetObserver;-><init>(Landroid/support/v7/widget/CursorAdapter;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/CursorAdapter$MyDataSetObserver;->this$0:Landroid/support/v7/widget/CursorAdapter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/CursorAdapter;->mDataValid:Z

    .line 2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/CursorAdapter$MyDataSetObserver;->this$0:Landroid/support/v7/widget/CursorAdapter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v7/widget/CursorAdapter;->mDataValid:Z

    .line 2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    return-void
.end method
