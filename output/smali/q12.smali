.class public final Lq12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwh1;


# instance fields
.field public final a:Lsk2;

.field public final b:Lvi0;

.field public final c:Z

.field public d:Lqa1;


# direct methods
.method public constructor <init>(Lsk2;Lvi0;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lq12;->d:Lqa1;

    .line 3
    iput-object p1, p0, Lq12;->a:Lsk2;

    .line 4
    iput-object p2, p0, Lq12;->b:Lvi0;

    .line 5
    iput-boolean p3, p0, Lq12;->c:Z

    return-void
.end method


# virtual methods
.method public final a(ZLandroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lvh1;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-boolean p1, p0, Lq12;->c:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lq12;->b:Lvi0;

    .line 3
    new-instance v0, Ly20;

    invoke-direct {v0, p2}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 4
    invoke-interface {p1, v0}, Lvi0;->Q6(Lx20;)Z

    move-result p1

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lq12;->b:Lvi0;

    .line 6
    new-instance v0, Ly20;

    invoke-direct {v0, p2}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 7
    invoke-interface {p1, v0}, Lvi0;->i6(Lx20;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz p1, :cond_3

    .line 8
    iget-object p1, p0, Lq12;->d:Lqa1;

    if-nez p1, :cond_1

    return-void

    .line 9
    :cond_1
    sget-object p1, Ly40;->b1:Lo40;

    .line 10
    sget-object p2, Los3;->j:Los3;

    iget-object p2, p2, Los3;->f:Lu40;

    .line 11
    invoke-virtual {p2, p1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object p1

    .line 12
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lq12;->a:Lsk2;

    iget p1, p1, Lsk2;->S:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    .line 13
    iget-object p1, p0, Lq12;->d:Lqa1;

    invoke-virtual {p1}, Lqa1;->onAdImpression()V

    :cond_2
    return-void

    .line 14
    :cond_3
    new-instance p1, Lvh1;

    const-string p2, "Adapter failed to show."

    invoke-direct {p1, p2}, Lvh1;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 15
    new-instance p2, Lvh1;

    invoke-direct {p2, p1}, Lvh1;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
