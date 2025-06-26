.class public final Luc1$a$a;
.super Ls63$b;
.source "SourceFile"

# interfaces
.implements Lf83;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luc1$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls63$b<",
        "Luc1$a;",
        "Luc1$a$a;",
        ">;",
        "Lf83;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lgd1;)V
    .locals 0

    .line 1
    invoke-static {}, Luc1$a;->x()Luc1$a;

    move-result-object p1

    invoke-direct {p0, p1}, Ls63$b;-><init>(Ls63;)V

    return-void
.end method
