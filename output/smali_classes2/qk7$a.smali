.class public final Lqk7$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrk7$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqk7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrk7$b<",
        "Lqk7;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic a:Lqk7$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lqk7$a;

    invoke-direct {v0}, Lqk7$a;-><init>()V

    sput-object v0, Lqk7$a;->a:Lqk7$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
