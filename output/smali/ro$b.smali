.class public Lro$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lro;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lro;


# direct methods
.method public constructor <init>(Lro;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lro$b;->e:Lro;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lro$b;->e:Lro;

    .line 2
    iget-object v0, v0, Lro;->x:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lro$b;->e:Lro;

    .line 5
    iget v0, p1, Lro;->r:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_1

    .line 6
    invoke-virtual {p1}, Lro;->c()V

    :cond_1
    return-void
.end method
