.class public Lym6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Long;

.field public final synthetic g:Lzm6;


# direct methods
.method public constructor <init>(Lzm6;Ljava/lang/Object;Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lym6;->g:Lzm6;

    iput-object p2, p0, Lym6;->e:Ljava/lang/Object;

    iput-object p3, p0, Lym6;->f:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lym6;->g:Lzm6;

    iget-object v1, p0, Lym6;->e:Ljava/lang/Object;

    iget-object v2, p0, Lym6;->f:Ljava/lang/Long;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 3
    iget-object v3, v0, Lwm6;->a:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-nez v3, :cond_2

    .line 4
    iget-object v3, v0, Lwm6;->b:Lj4;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lj4;->f(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v2}, Lwm6;->a(Ljava/lang/Long;)V

    .line 6
    iget-object v2, v0, Lwm6;->d:Lan6;

    invoke-virtual {v2, v3, v1}, Lan6;->b(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_2

    .line 7
    iget-object v0, v0, Lwm6;->e:Lrm6;

    invoke-virtual {v0, v3, v1}, Lrm6;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
