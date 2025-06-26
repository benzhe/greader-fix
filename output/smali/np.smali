.class public final Lnp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lnp;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lkp;->a:[C

    invoke-virtual {v0}, [C->clone()Ljava/lang/Object;

    .line 2
    sget-object v0, Lkp;->b:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    .line 3
    new-instance v0, Lnp;

    invoke-direct {v0}, Lnp;-><init>()V

    sput-object v0, Lnp;->a:Lnp;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
