.class public final La52;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcb3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcb3<",
        "Lt50;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lx42;


# direct methods
.method public constructor <init>(Lx42;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, La52;->a:Lx42;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, La52;->a:Lx42;

    .line 2
    iget-object v0, v0, Lx42;->a:Lt50;

    return-object v0
.end method
