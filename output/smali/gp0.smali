.class public final synthetic Lgp0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final e:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lgp0;

    invoke-direct {v0}, Lgp0;-><init>()V

    sput-object v0, Lgp0;->e:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    sget-object v0, Lfp0;->m:Ljava/util/List;

    const-string v0, "Pinged SB successfully."

    .line 2
    invoke-static {v0}, Lc50;->L3(Ljava/lang/String;)V

    return-void
.end method
