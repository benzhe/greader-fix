.class public Lt1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lt1;


# direct methods
.method public constructor <init>(Lt1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lt1$a;->e:Lt1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 1
    iget-object v0, p0, Lt1$a;->e:Lt1;

    invoke-virtual {v0}, Lt1;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lt1$a;->e:Lt1;

    iget-object v1, v0, Lt1;->m:Landroidx/appcompat/widget/MenuPopupWindow;

    .line 2
    iget-boolean v1, v1, Landroidx/appcompat/widget/ListPopupWindow;->C:Z

    if-nez v1, :cond_2

    .line 3
    iget-object v0, v0, Lt1;->r:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lt1$a;->e:Lt1;

    iget-object v0, v0, Lt1;->m:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lt1$a;->e:Lt1;

    invoke-virtual {v0}, Lt1;->dismiss()V

    :cond_2
    :goto_1
    return-void
.end method
