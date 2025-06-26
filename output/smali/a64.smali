.class public final La64;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf94;


# static fields
.field public static final a:Lf94;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, La64;

    invoke-direct {v0}, La64;-><init>()V

    sput-object v0, La64;->a:Lf94;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    sget-object p1, Lb64;->j:Lb64;

    goto :goto_0

    :cond_1
    sget-object p1, Lb64;->i:Lb64;

    goto :goto_0

    :cond_2
    sget-object p1, Lb64;->h:Lb64;

    goto :goto_0

    :cond_3
    sget-object p1, Lb64;->g:Lb64;

    goto :goto_0

    :cond_4
    sget-object p1, Lb64;->f:Lb64;

    :goto_0
    if-eqz p1, :cond_5

    return v0

    :cond_5
    const/4 p1, 0x0

    return p1
.end method
