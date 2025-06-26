.class public final synthetic Lg56;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvc7;


# instance fields
.field public final e:Lk56;


# direct methods
.method public constructor <init>(Lk56;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg56;->e:Lk56;

    return-void
.end method


# virtual methods
.method public test(Ljava/lang/Object;)Z
    .locals 8

    iget-object v0, p0, Lg56;->e:Lk56;

    check-cast p1, Lkg6;

    .line 1
    iget-object v1, v0, Lk56;->k:Lq66;

    .line 2
    iget-boolean v1, v1, Lq66;->b:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    .line 3
    iget-object v0, v0, Lk56;->d:Lz86;

    .line 4
    invoke-virtual {p1}, Lkg6;->G()Lkg6$c;

    move-result-object v1

    sget-object v4, Lkg6$c;->e:Lkg6$c;

    invoke-virtual {v1, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p1}, Lkg6;->J()Llg6;

    move-result-object v1

    invoke-virtual {v1}, Llg6;->F()J

    move-result-wide v4

    .line 6
    invoke-virtual {p1}, Lkg6;->J()Llg6;

    move-result-object p1

    invoke-virtual {p1}, Llg6;->C()J

    move-result-wide v6

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Lkg6;->G()Lkg6$c;

    move-result-object v1

    sget-object v4, Lkg6$c;->f:Lkg6$c;

    invoke-virtual {v1, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {p1}, Lkg6;->E()Ljg6;

    move-result-object v1

    invoke-virtual {v1}, Ljg6;->F()J

    move-result-wide v4

    .line 9
    invoke-virtual {p1}, Lkg6;->E()Ljg6;

    move-result-object p1

    invoke-virtual {p1}, Ljg6;->C()J

    move-result-wide v6

    .line 10
    :goto_0
    invoke-interface {v0}, Lz86;->a()J

    move-result-wide v0

    cmp-long p1, v0, v4

    if-lez p1, :cond_1

    cmp-long p1, v0, v6

    if-gez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_2
    return v2
.end method
