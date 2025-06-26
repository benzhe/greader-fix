.class public Lt27$c;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt27;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lt27;


# direct methods
.method public constructor <init>(Lt27;Lt27$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lt27$c;->a:Lt27;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lt27$c;->a:Lt27;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lt27;->e:Z

    .line 2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .line 1
    iget-object v0, p0, Lt27$c;->a:Lt27;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lt27;->e:Z

    .line 2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    return-void
.end method
