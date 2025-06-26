.class public final Lq43;
.super Lr33;
.source "SourceFile"


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lr33;-><init>([B)V

    return-void
.end method


# virtual methods
.method public final b([BI)Lp33;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 1
    new-instance v0, Lr43;

    invoke-direct {v0, p1, p2}, Lr43;-><init>([BI)V

    return-object v0
.end method
