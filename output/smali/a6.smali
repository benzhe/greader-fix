.class public La6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lc6;

.field public b:Lc6;

.field public c:Lc6;

.field public d:Lc6;

.field public e:Lc6;

.field public f:Lc6;

.field public g:Lc6;

.field public h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc6;",
            ">;"
        }
    .end annotation
.end field

.field public i:I

.field public j:I

.field public k:F

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Z


# direct methods
.method public constructor <init>(Lc6;IZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, La6;->k:F

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, La6;->p:Z

    .line 4
    iput-object p1, p0, La6;->a:Lc6;

    .line 5
    iput p2, p0, La6;->o:I

    .line 6
    iput-boolean p3, p0, La6;->p:Z

    return-void
.end method
