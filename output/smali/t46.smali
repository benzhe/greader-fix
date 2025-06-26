.class public final synthetic Lt46;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltc7;


# instance fields
.field public final e:Lq66;


# direct methods
.method public constructor <init>(Lq66;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt46;->e:Lq66;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lt46;->e:Lq66;

    check-cast p1, Lqg6;

    .line 1
    iget-boolean v1, v0, Lq66;->b:Z

    if-nez v1, :cond_2

    .line 2
    iget-boolean v1, v0, Lq66;->c:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 3
    iget v1, v0, Lq66;->d:I

    add-int/2addr v1, v2

    iput v1, v0, Lq66;->d:I

    const/4 v3, 0x5

    if-lt v1, v3, :cond_0

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Lq66;->c:Z

    .line 5
    iget-object v3, v0, Lq66;->a:Lo66;

    const-string v4, "fresh_install"

    invoke-virtual {v3, v4, v1}, Lo66;->b(Ljava/lang/String;Z)V

    .line 6
    :cond_0
    invoke-virtual {p1}, Lqg6;->F()Ljava/util/List;

    move-result-object p1

    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkg6;

    .line 8
    invoke-virtual {v1}, Lkg6;->F()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    iput-boolean v2, v0, Lq66;->b:Z

    .line 10
    iget-object p1, v0, Lq66;->a:Lo66;

    const-string v0, "test_device"

    invoke-virtual {p1, v0, v2}, Lo66;->b(Ljava/lang/String;Z)V

    const-string p1, "Setting this device as a test device"

    .line 11
    invoke-static {p1}, Ln56;->u1(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
