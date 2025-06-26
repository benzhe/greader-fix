.class public Lcom/noinnion/android/reader/ui/BaseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# instance fields
.field public final v:Lhc7;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    new-instance v0, Lhc7;

    invoke-direct {v0}, Lhc7;-><init>()V

    iput-object v0, p0, Lcom/noinnion/android/reader/ui/BaseActivity;->v:Lhc7;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, p1, v1, v0}, Lcom/noinnion/android/reader/ui/BaseActivity;->y(Landroid/os/Bundle;ZZ)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/reader/ui/BaseActivity;->v:Lhc7;

    invoke-virtual {v0}, Lhc7;->d()V

    .line 2
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public final y(Landroid/os/Bundle;ZZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    invoke-static {p0, p3}, Llw6;->m(Landroid/app/Activity;Z)V

    .line 2
    :cond_0
    invoke-static {p0}, Liw6;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Ljw6;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {p0}, Liw6;->N(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 5
    invoke-static {p0, p1}, Ln56;->S1(Landroid/app/Activity;Z)V

    :cond_1
    return-void
.end method
