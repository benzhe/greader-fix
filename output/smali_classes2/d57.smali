.class public final Ld57;
.super Lr37;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld57$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr37<",
        "Ld57;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lg47;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg47<",
            "*>;"
        }
    .end annotation
.end field

.field public b:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "m97"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>(Lg47;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg47<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lr37;-><init>()V

    const-string v0, "delegateBuilder"

    .line 2
    invoke-static {p1, v0}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lg47;

    iput-object p1, p0, Ld57;->a:Lg47;

    return-void
.end method


# virtual methods
.method public a()Lf47;
    .locals 3

    .line 1
    new-instance v0, Ld57$b;

    iget-object v1, p0, Ld57;->a:Lg47;

    invoke-virtual {v1}, Lg47;->a()Lf47;

    move-result-object v1

    iget-object v2, p0, Ld57;->b:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Ld57$b;-><init>(Lf47;Landroid/content/Context;)V

    return-object v0
.end method
