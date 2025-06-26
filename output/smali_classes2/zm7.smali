.class public abstract Lzm7;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzm7$a;
    }
.end annotation


# static fields
.field public static final a:Lzm7;

.field public static final b:Lzm7$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lzm7$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lzm7$a;-><init>(Lgm7;)V

    sput-object v0, Lzm7;->b:Lzm7$a;

    .line 1
    sget-object v0, Lal7;->a:Lzk7;

    invoke-virtual {v0}, Lzk7;->b()Lzm7;

    move-result-object v0

    sput-object v0, Lzm7;->a:Lzm7;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method
