.class final Ladx$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lavy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ladx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ladx;


# direct methods
.method constructor <init>(Ladx;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Ladx$3;->a:Ladx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lavo;Lavx;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 355
    const-string v0, "DSnapItemTextureVideoViewAdapter"

    const-string v1, "[%s] Video first frame loaded."

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Ladx$3;->a:Ladx;

    iget-object v4, v4, Ladx;->d:Lcom/snapchat/android/discover/model/DSnapPage;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 356
    iget-object v0, p0, Ladx$3;->a:Ladx;

    iput-boolean v5, v0, Ladx;->b:Z

    .line 357
    iget-object v0, p0, Ladx$3;->a:Ladx;

    invoke-static {v0}, Ladx;->a(Ladx;)V

    .line 358
    return-void
.end method