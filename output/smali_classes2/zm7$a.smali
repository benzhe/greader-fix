.class public final Lzm7$a;
.super Lzm7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzm7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lgm7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lzm7;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    sget-object v0, Lzm7;->a:Lzm7;

    .line 2
    invoke-virtual {v0}, Lzm7;->a()I

    move-result v0

    return v0
.end method
