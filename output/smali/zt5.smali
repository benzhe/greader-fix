.class public Lzt5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljn5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljn5<",
            "Lbu5;",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lbu5;->f:Lln5;

    sget-object v0, Lau5;->e:Lau5;

    .line 2
    sget v1, Ljn5$a;->a:I

    .line 3
    new-instance v1, Lhn5;

    invoke-direct {v1, v0}, Lhn5;-><init>(Ljava/util/Comparator;)V

    .line 4
    sput-object v1, Lzt5;->a:Ljn5;

    return-void
.end method
