.class public final Lla3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly63;


# static fields
.field public static final a:Ly63;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lla3;

    invoke-direct {v0}, Lla3;-><init>()V

    sput-object v0, Lla3;->a:Ly63;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final k(I)Z
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
    sget-object p1, Lia3;->j:Lia3;

    goto :goto_0

    .line 2
    :cond_1
    sget-object p1, Lia3;->i:Lia3;

    goto :goto_0

    .line 3
    :cond_2
    sget-object p1, Lia3;->h:Lia3;

    goto :goto_0

    .line 4
    :cond_3
    sget-object p1, Lia3;->g:Lia3;

    goto :goto_0

    .line 5
    :cond_4
    sget-object p1, Lia3;->f:Lia3;

    :goto_0
    if-eqz p1, :cond_5

    return v0

    :cond_5
    const/4 p1, 0x0

    return p1
.end method
