.class public abstract Ltk5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltk5$a;,
        Ltk5$d;,
        Ltk5$b;,
        Ltk5$c;,
        Ltk5$e;
    }
.end annotation


# static fields
.field public static final a:Ljava/nio/charset/Charset;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 1
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Ltk5;->a:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public abstract e()Ltk5$c;
.end method

.method public abstract f()I
.end method

.method public abstract g()Ljava/lang/String;
.end method

.method public abstract h()Ltk5$d;
.end method

.method public abstract i()Ltk5$a;
.end method

.method public j(JZLjava/lang/String;)Ltk5;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ltk5;->i()Ltk5$a;

    move-result-object v0

    .line 2
    move-object v1, p0

    check-cast v1, Lzj5;

    .line 3
    iget-object v1, v1, Lzj5;->h:Ltk5$d;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Ltk5$d;->l()Ltk5$d$b;

    move-result-object v1

    .line 5
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    move-object p2, v1

    check-cast p2, Ldk5$b;

    .line 6
    iput-object p1, p2, Ldk5$b;->d:Ljava/lang/Long;

    .line 7
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p2, Ldk5$b;->e:Ljava/lang/Boolean;

    if-eqz p4, :cond_0

    .line 8
    new-instance p1, Lsk5;

    const/4 p3, 0x0

    invoke-direct {p1, p4, p3}, Lsk5;-><init>(Ljava/lang/String;Lsk5$a;)V

    .line 9
    iput-object p1, p2, Ldk5$b;->g:Ltk5$d$f;

    .line 10
    invoke-virtual {p2}, Ldk5$b;->a()Ltk5$d;

    .line 11
    :cond_0
    invoke-virtual {v1}, Ltk5$d$b;->a()Ltk5$d;

    move-result-object p1

    .line 12
    move-object p2, v0

    check-cast p2, Lzj5$b;

    .line 13
    iput-object p1, p2, Lzj5$b;->g:Ltk5$d;

    .line 14
    :cond_1
    invoke-virtual {v0}, Ltk5$a;->a()Ltk5;

    move-result-object p1

    return-object p1
.end method
