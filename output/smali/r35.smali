.class public final Lr35;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lny$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lny$g<",
            "Li35;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lny$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lny$g<",
            "Li35;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lny$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lny$a<",
            "Li35;",
            "Lh35;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lny$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lny$a<",
            "Li35;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lny$g;

    invoke-direct {v0}, Lny$g;-><init>()V

    sput-object v0, Lr35;->a:Lny$g;

    .line 2
    new-instance v1, Lny$g;

    invoke-direct {v1}, Lny$g;-><init>()V

    sput-object v1, Lr35;->b:Lny$g;

    .line 3
    new-instance v2, Ls35;

    invoke-direct {v2}, Ls35;-><init>()V

    sput-object v2, Lr35;->c:Lny$a;

    .line 4
    new-instance v3, Lt35;

    invoke-direct {v3}, Lt35;-><init>()V

    sput-object v3, Lr35;->d:Lny$a;

    .line 5
    new-instance v4, Lcom/google/android/gms/common/api/Scope;

    const-string v5, "profile"

    invoke-direct {v4, v5}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance v4, Lcom/google/android/gms/common/api/Scope;

    const-string v5, "email"

    invoke-direct {v4, v5}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    const-string v4, "Cannot construct an Api with a null ClientBuilder"

    .line 7
    invoke-static {v2, v4}, Lbi;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Cannot construct an Api with a null ClientKey"

    .line 8
    invoke-static {v0, v2}, Lbi;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {v3, v4}, Lbi;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {v1, v2}, Lbi;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
