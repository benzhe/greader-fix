.class public Lmy;
.super Lrb;
.source "SourceFile"


# instance fields
.field public e:Landroid/app/Dialog;

.field public f:Landroid/content/DialogInterface$OnCancelListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lrb;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lmy;->e:Landroid/app/Dialog;

    .line 3
    iput-object v0, p0, Lmy;->f:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmy;->f:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0

    .line 1
    iget-object p1, p0, Lmy;->e:Landroid/app/Dialog;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lrb;->setShowsDialog(Z)V

    .line 3
    :cond_0
    iget-object p1, p0, Lmy;->e:Landroid/app/Dialog;

    return-object p1
.end method

.method public show(Lwb;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lrb;->show(Lwb;Ljava/lang/String;)V

    return-void
.end method
