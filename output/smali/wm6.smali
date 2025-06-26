.class public Lwm6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lj4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj4<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lj4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj4<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lan6;

.field public e:Lrm6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrm6<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lwm6;->a:Ljava/util/Set;

    .line 3
    new-instance v0, Lj4;

    invoke-direct {v0}, Lj4;-><init>()V

    iput-object v0, p0, Lwm6;->b:Lj4;

    .line 4
    new-instance v0, Lj4;

    invoke-direct {v0}, Lj4;-><init>()V

    iput-object v0, p0, Lwm6;->c:Lj4;

    .line 5
    new-instance v0, Lan6;

    invoke-direct {v0}, Lan6;-><init>()V

    iput-object v0, p0, Lwm6;->d:Lan6;

    .line 6
    new-instance v0, Lrm6;

    invoke-direct {v0}, Lrm6;-><init>()V

    iput-object v0, p0, Lwm6;->e:Lrm6;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Long;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lwm6;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lwm6;->b:Lj4;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lj4;->j(J)V

    .line 3
    iget-object v0, p0, Lwm6;->c:Lj4;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lj4;->j(J)V

    return-void
.end method

.method public b(Ljava/lang/String;Lbn6;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lwm6;->d:Lan6;

    .line 2
    iget-object v0, v0, Lan6;->a:Lrm6;

    invoke-virtual {v0, p1}, Lrm6;->d(Ljava/lang/Object;)Ljava/util/List;

    .line 3
    iget-object v0, p0, Lwm6;->d:Lan6;

    invoke-virtual {v0, p1, p2}, Lan6;->a(Ljava/lang/String;Lbn6;)V

    .line 4
    iget-object p2, p0, Lwm6;->e:Lrm6;

    invoke-virtual {p2, p1}, Lrm6;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 5
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lwm6;->d:Lan6;

    invoke-virtual {v1, p1, v0}, Lan6;->b(Ljava/lang/String;Ljava/lang/Object;)I

    goto :goto_0

    :cond_0
    return-void
.end method
