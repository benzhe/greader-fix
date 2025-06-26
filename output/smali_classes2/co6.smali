.class public final Lco6;
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
        "Ljava/lang/Integer;",
        "Lw38<",
        "+",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final e:Lco6;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lco6;

    invoke-direct {v0}, Lco6;-><init>()V

    sput-object v0, Lco6;->e:Lco6;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Integer;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x3

    invoke-static {v0, v1, p1}, Lmb7;->u(JLjava/util/concurrent/TimeUnit;)Lmb7;

    move-result-object p1

    return-object p1
.end method
