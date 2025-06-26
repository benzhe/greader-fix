.class public final Lhh1$a;
.super Ls63$b;
.source "SourceFile"

# interfaces
.implements Lf83;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhh1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls63$b<",
        "Lhh1;",
        "Lhh1$a;",
        ">;",
        "Lf83;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lhg1;)V
    .locals 0

    .line 1
    invoke-static {}, Lhh1;->z()Lhh1;

    move-result-object p1

    invoke-direct {p0, p1}, Ls63$b;-><init>(Ls63;)V

    return-void
.end method
