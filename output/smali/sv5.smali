.class public Lsv5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljw5;


# static fields
.field public static final d:Li47$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li47$f<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Li47$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li47$f<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Li47$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li47$f<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ls96;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls96<",
            "Lby5;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ls96;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls96<",
            "Lcb6;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lve5;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Li47;->c:Li47$d;

    const-string v1, "x-firebase-client-log-type"

    .line 2
    invoke-static {v1, v0}, Li47$f;->a(Ljava/lang/String;Li47$d;)Li47$f;

    move-result-object v1

    sput-object v1, Lsv5;->d:Li47$f;

    const-string v1, "x-firebase-client"

    .line 3
    invoke-static {v1, v0}, Li47$f;->a(Ljava/lang/String;Li47$d;)Li47$f;

    move-result-object v1

    sput-object v1, Lsv5;->e:Li47$f;

    const-string v1, "x-firebase-gmpid"

    .line 4
    invoke-static {v1, v0}, Li47$f;->a(Ljava/lang/String;Li47$d;)Li47$f;

    move-result-object v0

    sput-object v0, Lsv5;->f:Li47$f;

    return-void
.end method

.method public constructor <init>(Ls96;Ls96;Lve5;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls96<",
            "Lcb6;",
            ">;",
            "Ls96<",
            "Lby5;",
            ">;",
            "Lve5;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lsv5;->b:Ls96;

    .line 3
    iput-object p2, p0, Lsv5;->a:Ls96;

    .line 4
    iput-object p3, p0, Lsv5;->c:Lve5;

    return-void
.end method
