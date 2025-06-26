.class public Lq41;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lg61;

.field public final b:Landroid/view/View;

.field public final c:Luk2;

.field public final d:Lxw0;


# direct methods
.method public constructor <init>(Landroid/view/View;Lxw0;Lg61;Luk2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lq41;->b:Landroid/view/View;

    .line 3
    iput-object p2, p0, Lq41;->d:Lxw0;

    .line 4
    iput-object p3, p0, Lq41;->a:Lg61;

    .line 5
    iput-object p4, p0, Lq41;->c:Luk2;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Set;)Lnb1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lsf1<",
            "Lob1;",
            ">;>;)",
            "Lnb1;"
        }
    .end annotation

    .line 1
    new-instance v0, Lnb1;

    invoke-direct {v0, p1}, Lnb1;-><init>(Ljava/util/Set;)V

    return-object v0
.end method
