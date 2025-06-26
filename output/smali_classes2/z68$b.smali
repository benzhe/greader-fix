.class public Lz68$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La78;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz68;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La78<",
        "Lj58;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu68;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lu68;->w(La78;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj58;

    return-object p1
.end method
