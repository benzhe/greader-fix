.class public Landroidx/fragment/app/FragmentActivity$a;
.super Lvb;
.source "SourceFile"

# interfaces
.implements Lrd;
.implements Lt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/FragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvb<",
        "Landroidx/fragment/app/FragmentActivity;",
        ">;",
        "Lrd;",
        "Lt;"
    }
.end annotation


# instance fields
.field public final synthetic j:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/FragmentActivity$a;->j:Landroidx/fragment/app/FragmentActivity;

    .line 2
    invoke-direct {p0, p1}, Lvb;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity$a;->j:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public b()Landroidx/activity/OnBackPressedDispatcher;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity$a;->j:Landroidx/fragment/app/FragmentActivity;

    .line 2
    iget-object v0, v0, Landroidx/activity/ComponentActivity;->j:Landroidx/activity/OnBackPressedDispatcher;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity$a;->j:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d(Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/fragment/app/FragmentActivity$a;->j:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->q()V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p2, p0, Landroidx/fragment/app/FragmentActivity$a;->j:Landroidx/fragment/app/FragmentActivity;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, p3, p4}, Landroidx/fragment/app/FragmentActivity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public f()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity$a;->j:Landroidx/fragment/app/FragmentActivity;

    return-object v0
.end method

.method public g()Landroid/view/LayoutInflater;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity$a;->j:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/FragmentActivity$a;->j:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public getLifecycle()Lad;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity$a;->j:Landroidx/fragment/app/FragmentActivity;

    iget-object v0, v0, Landroidx/fragment/app/FragmentActivity;->l:Led;

    return-object v0
.end method

.method public getViewModelStore()Lqd;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity$a;->j:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getViewModelStore()Lqd;

    move-result-object v0

    return-object v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity$a;->j:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    :goto_0
    return v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity$a;->j:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j(Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity$a;->j:Landroidx/fragment/app/FragmentActivity;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, -0x1

    if-ne p3, v1, :cond_0

    .line 3
    invoke-static {v0, p2, p3}, Lf7;->c(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p3}, Landroidx/fragment/app/FragmentActivity;->n(I)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 5
    :try_start_0
    iput-boolean v2, v0, Landroidx/fragment/app/FragmentActivity;->p:Z

    .line 6
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->m(Landroidx/fragment/app/Fragment;)I

    move-result p1

    add-int/2addr p1, v2

    shl-int/lit8 p1, p1, 0x10

    const v2, 0xffff

    and-int/2addr p3, v2

    add-int/2addr p1, p3

    .line 7
    invoke-static {v0, p2, p1}, Lf7;->c(Landroid/app/Activity;[Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iput-boolean v1, v0, Landroidx/fragment/app/FragmentActivity;->p:Z

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    iput-boolean v1, v0, Landroidx/fragment/app/FragmentActivity;->p:Z

    .line 9
    throw p1
.end method

.method public k(Landroidx/fragment/app/Fragment;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/fragment/app/FragmentActivity$a;->j:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public l(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity$a;->j:Landroidx/fragment/app/FragmentActivity;

    .line 2
    sget v1, Lf7;->b:I

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public m(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity$a;->j:Landroidx/fragment/app/FragmentActivity;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Landroidx/fragment/app/FragmentActivity;->r:Z

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne p3, v2, :cond_0

    .line 3
    :try_start_0
    sget p1, Lf7;->b:I

    .line 4
    invoke-virtual {v0, p2, v2, p4}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p3}, Landroidx/fragment/app/FragmentActivity;->n(I)V

    .line 6
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->m(Landroidx/fragment/app/Fragment;)I

    move-result p1

    add-int/2addr p1, v1

    shl-int/lit8 p1, p1, 0x10

    const v1, 0xffff

    and-int/2addr p3, v1

    add-int/2addr p1, p3

    .line 7
    sget p3, Lf7;->b:I

    .line 8
    invoke-virtual {v0, p2, p1, p4}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :goto_0
    iput-boolean v3, v0, Landroidx/fragment/app/FragmentActivity;->r:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v3, v0, Landroidx/fragment/app/FragmentActivity;->r:Z

    .line 10
    throw p1
.end method

.method public n(Landroidx/fragment/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    move v0, p3

    move-object v9, p0

    .line 1
    iget-object v10, v9, Landroidx/fragment/app/FragmentActivity$a;->j:Landroidx/fragment/app/FragmentActivity;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v10, Landroidx/fragment/app/FragmentActivity;->q:Z

    const/4 v2, -0x1

    const/4 v11, 0x0

    if-ne v0, v2, :cond_0

    .line 3
    :try_start_0
    sget v1, Lf7;->b:I

    move-object v1, v10

    move-object v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 4
    invoke-virtual/range {v1 .. v8}, Landroidx/fragment/app/FragmentActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p3}, Landroidx/fragment/app/FragmentActivity;->n(I)V

    move-object v2, p1

    .line 6
    invoke-virtual {v10, p1}, Landroidx/fragment/app/FragmentActivity;->m(Landroidx/fragment/app/Fragment;)I

    move-result v2

    add-int/2addr v2, v1

    shl-int/lit8 v1, v2, 0x10

    const v2, 0xffff

    and-int/2addr v0, v2

    add-int v2, v1, v0

    .line 7
    sget v0, Lf7;->b:I

    move-object v0, v10

    move-object v1, p2

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    .line 8
    invoke-virtual/range {v0 .. v7}, Landroidx/fragment/app/FragmentActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :goto_0
    iput-boolean v11, v10, Landroidx/fragment/app/FragmentActivity;->q:Z

    return-void

    :catchall_0
    move-exception v0

    iput-boolean v11, v10, Landroidx/fragment/app/FragmentActivity;->q:Z

    .line 10
    throw v0
.end method

.method public o()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity$a;->j:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->r()V

    return-void
.end method
