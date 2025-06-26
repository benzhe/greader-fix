.class public final Lwd$a;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lwd;


# direct methods
.method public constructor <init>(Lwd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwd$a;->a:Lwd;

    .line 2
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lwd$a;->a:Lwd;

    .line 2
    iget-boolean v0, p1, Lwd;->d:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lwd;->d()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p1, Lwd;->g:Z

    :goto_0
    return-void
.end method
