.class public final Ljf5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldf5;


# instance fields
.field public final a:Lbf5$b;

.field public final b:Lxr4;

.field public final c:Lif5;


# direct methods
.method public constructor <init>(Lxr4;Lbf5$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ljf5;->a:Lbf5$b;

    iput-object p1, p0, Ljf5;->b:Lxr4;

    new-instance p2, Lif5;

    .line 1
    invoke-direct {p2, p0}, Lif5;-><init>(Ljf5;)V

    iput-object p2, p0, Ljf5;->c:Lif5;

    .line 2
    invoke-virtual {p1, p2}, Lxr4;->a(Lxr4$a;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
