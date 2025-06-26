.class public final synthetic Lru;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltu$b;


# static fields
.field public static final a:Lru;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lru;

    invoke-direct {v0}, Lru;-><init>()V

    sput-object v0, Lru;->a:Lru;

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

    check-cast p1, Ljava/lang/Throwable;

    .line 1
    sget-object v0, Ltu;->i:Luq;

    .line 2
    new-instance v0, Lbv;

    const-string v1, "Timed out while trying to open db."

    invoke-direct {v0, v1, p1}, Lbv;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
