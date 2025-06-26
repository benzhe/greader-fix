.class public Lug5$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmo5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lug5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lmo5;


# direct methods
.method public constructor <init>(Ljava/util/Set;Lmo5;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Lmo5;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lug5$a;->a:Lmo5;

    return-void
.end method
