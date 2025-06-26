.class public final Ldo6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luc7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Luc7<",
        "Lmb7<",
        "Ljava/lang/Throwable;",
        ">;",
        "Lw38<",
        "*>;>;"
    }
.end annotation


# static fields
.field public static final e:Ldo6;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldo6;

    invoke-direct {v0}, Ldo6;-><init>()V

    sput-object v0, Ldo6;->e:Ldo6;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lmb7;

    const-string v0, "error"

    .line 2
    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 3
    invoke-static {v0, v1}, Lmb7;->q(II)Lmb7;

    move-result-object v0

    sget-object v1, Lbo6;->a:Lbo6;

    invoke-virtual {p1, v0, v1}, Lmb7;->v(Lw38;Lrc7;)Lmb7;

    move-result-object p1

    .line 4
    sget-object v0, Lco6;->e:Lco6;

    .line 5
    sget v1, Lmb7;->e:I

    const/4 v2, 0x0

    .line 6
    invoke-virtual {p1, v0, v2, v1, v1}, Lmb7;->k(Luc7;ZII)Lmb7;

    move-result-object p1

    return-object p1
.end method
