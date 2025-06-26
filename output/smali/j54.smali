.class public final Lj54;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf94;


# static fields
.field public static final a:Lf94;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj54;

    invoke-direct {v0}, Lj54;-><init>()V

    sput-object v0, Lj54;->a:Lf94;

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

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    sget-object p1, Lk54;->g:Lk54;

    goto :goto_0

    :cond_1
    sget-object p1, Lk54;->f:Lk54;

    :goto_0
    if-eqz p1, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
