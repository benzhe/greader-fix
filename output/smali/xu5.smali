.class public Lxu5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lav5;


# static fields
.field public static final a:Lxu5;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lxu5;

    invoke-direct {v0}, Lxu5;-><init>()V

    sput-object v0, Lxu5;->a:Lxu5;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbd6;Lcom/google/firebase/Timestamp;)Lbd6;
    .locals 5

    .line 1
    invoke-static {}, Lbd6;->Z()Lbd6$b;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lgj6$a;->o()V

    .line 3
    iget-object v1, v0, Lgj6$a;->f:Lgj6;

    check-cast v1, Lbd6;

    const-string v2, "server_timestamp"

    invoke-static {v1, v2}, Lbd6;->D(Lbd6;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Lgj6$a;->l()Lgj6;

    move-result-object v0

    check-cast v0, Lbd6;

    .line 5
    invoke-static {}, Lbd6;->Z()Lbd6$b;

    move-result-object v1

    .line 6
    invoke-static {}, Lwk6;->H()Lwk6$b;

    move-result-object v2

    .line 7
    iget-wide v3, p2, Lcom/google/firebase/Timestamp;->e:J

    .line 8
    invoke-virtual {v2, v3, v4}, Lwk6$b;->s(J)Lwk6$b;

    .line 9
    iget p2, p2, Lcom/google/firebase/Timestamp;->f:I

    .line 10
    invoke-virtual {v2, p2}, Lwk6$b;->r(I)Lwk6$b;

    .line 11
    invoke-virtual {v1}, Lgj6$a;->o()V

    .line 12
    iget-object p2, v1, Lgj6$a;->f:Lgj6;

    check-cast p2, Lbd6;

    invoke-virtual {v2}, Lgj6$a;->l()Lgj6;

    move-result-object v2

    check-cast v2, Lwk6;

    invoke-static {p2, v2}, Lbd6;->C(Lbd6;Lwk6;)V

    .line 13
    invoke-virtual {v1}, Lgj6$a;->l()Lgj6;

    move-result-object p2

    check-cast p2, Lbd6;

    .line 14
    invoke-static {}, Lwc6;->I()Lwc6$b;

    move-result-object v1

    const-string v2, "__type__"

    .line 15
    invoke-virtual {v1, v2, v0}, Lwc6$b;->r(Ljava/lang/String;Lbd6;)Lwc6$b;

    const-string v0, "__local_write_time__"

    .line 16
    invoke-virtual {v1, v0, p2}, Lwc6$b;->r(Ljava/lang/String;Lbd6;)Lwc6$b;

    if-eqz p1, :cond_0

    const-string p2, "__previous_value__"

    .line 17
    invoke-virtual {v1, p2, p1}, Lwc6$b;->r(Ljava/lang/String;Lbd6;)Lwc6$b;

    .line 18
    :cond_0
    invoke-static {}, Lbd6;->Z()Lbd6$b;

    move-result-object p1

    invoke-virtual {p1, v1}, Lbd6$b;->u(Lwc6$b;)Lbd6$b;

    invoke-virtual {p1}, Lgj6$a;->l()Lgj6;

    move-result-object p1

    check-cast p1, Lbd6;

    return-object p1
.end method

.method public b(Lbd6;)Lbd6;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Lbd6;Lbd6;)Lbd6;
    .locals 0

    return-object p2
.end method
