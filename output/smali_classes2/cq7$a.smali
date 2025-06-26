.class public final Lcq7$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lup7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcq7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# virtual methods
.method public a()Leq7;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Finishing[cancelling=false, completing=false, rootCause=null, exceptions=null, list=null]"

    return-object v0
.end method
