.class public Lgr5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lir5;

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Leu5;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lpu5;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lir5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lgr5;->a:Lir5;

    .line 3
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lgr5;->b:Ljava/util/Set;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lgr5;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()Lhr5;
    .locals 4

    .line 1
    new-instance v0, Lhr5;

    sget-object v1, Leu5;->g:Leu5;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lhr5;-><init>(Lgr5;Leu5;ZLfr5;)V

    return-object v0
.end method
