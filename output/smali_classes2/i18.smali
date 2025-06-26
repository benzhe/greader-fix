.class public final Li18;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lk18;

.field public b:Z

.field public final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lk18;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lp08<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final e:Z

.field public final f:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Li18;->e:Z

    iput-boolean p2, p0, Li18;->f:Z

    .line 2
    sget-object p1, Lp18;->e:Lp18;

    .line 3
    sget-object p1, Lp18;->d:Ll18;

    .line 4
    iput-object p1, p0, Li18;->a:Lk18;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Li18;->c:Ljava/util/ArrayList;

    .line 6
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Li18;->d:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final a(ZZ)Lr08;
    .locals 4

    .line 1
    new-instance v0, Lr08;

    iget-boolean v1, p0, Li18;->e:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    iget-boolean v1, p0, Li18;->f:Z

    if-nez v1, :cond_3

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_2
    const/4 p1, 0x4

    invoke-direct {v0, p2, v2, v3, p1}, Lr08;-><init>(ZZZI)V

    return-object v0
.end method
