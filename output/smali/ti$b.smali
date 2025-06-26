.class public Lti$b;
.super Lti$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lti$f;-><init>()V

    return-void
.end method

.method public constructor <init>(Lti$b;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lti$f;-><init>(Lti$f;)V

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
