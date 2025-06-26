.class public final Lf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Li18;

.field public static final b:Li18;

.field public static final c:Li18;

.field public static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Li18;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lf;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lf;

    invoke-direct {v0}, Lf;-><init>()V

    sput-object v0, Lf;->e:Lf;

    .line 2
    sget-object v0, Lf$a;->f:Lf$a;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {v1, v1, v0, v2}, Lkt7;->n(ZZLpl7;I)Li18;

    move-result-object v0

    sput-object v0, Lf;->a:Li18;

    .line 3
    sget-object v3, Lf$a;->h:Lf$a;

    invoke-static {v1, v1, v3, v2}, Lkt7;->n(ZZLpl7;I)Li18;

    move-result-object v3

    sput-object v3, Lf;->b:Li18;

    .line 4
    sget-object v4, Lf$a;->g:Lf$a;

    invoke-static {v1, v1, v4, v2}, Lkt7;->n(ZZLpl7;I)Li18;

    move-result-object v4

    sput-object v4, Lf;->c:Li18;

    new-array v2, v2, [Li18;

    aput-object v0, v2, v1

    const/4 v0, 0x1

    aput-object v3, v2, v0

    const/4 v0, 0x2

    aput-object v4, v2, v0

    .line 5
    invoke-static {v2}, Lek7;->l([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lf;->d:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
